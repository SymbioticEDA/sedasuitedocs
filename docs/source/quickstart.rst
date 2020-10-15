Getting started with Formal Verification
----------------------------------------

This short guide aims to get you started with the `Symbiotic EDA <https://www.symbioticeda.com/>`_ Formal Verification tools.

Install the tools and the license
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You will have been sent the license and a link to download the tools. 
For this example we will assume the tool package has been downloaded to ~/Downloads/symbiotic-latest.tar.gz
and the license has been downloaded to ~/Downloads/symbiotic-eval.lic

Make sure you change the text below to match your package and license names.

Typically you will install the tools like this:

.. code-block:: text

    cd /opt
    sudo tar -xzf ~/Downloads/symbiotic-latest.tar.gz

Then include this new directory in your PATH environment variable:

.. code-block:: text

    export PATH=/opt/symbiotic-latest/bin:$PATH

If you want to make this change permanent, add it to your .bashrc file:

.. code-block:: text

    echo 'export PATH=/opt/symbiotic-latest/bin:$PATH' >> ~/.bashrc

Save the license file to a safe place:

.. code-block:: text

    cp ~/Downloads/symbiotic-eval.lic ~/

And create a new environment variable so the tools can find it:

.. code-block:: text

    export SYMBIOTIC_LICENSE="$HOME/symbiotic-eval.lic"

If you want to make this permament, add it to your .bashrc file:

.. code-block:: text

    echo 'export SYMBIOTIC_LICENSE="$HOME/symbiotic-eval.lic"' >> ~/.bashrc

Finally, you need to run ``setup.sh``:

.. code-block:: text

    /opt/symbiotic-latest/bin/setup.sh

Check the tools are installed correctly
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

run this command:

.. code-block:: text

    which yosys

This should return the path where yosys is installed in /opt/symbiotic-latest

.. code-block:: text

    yosys

This will start yosys in shell mode and you should see that your license is verified:

.. code-block:: text

    [license] Signature verified.

If not, please contact us to help you resolve the issue.

Then press ctrl+D or type ``exit`` to exit yosys.

Formally Verify a simple Verilog example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Take a look at this example: `counter.v <https://github.com/SymbioticEDA/getting-started-FV/blob/master/counter.v>`_. We have one formal property, an assertion that the counter will always be less than ``MAX_AMOUNT``.

`counter.sby <https://github.com/SymbioticEDA/getting-started-FV/blob/master/counter.sby>`_ is the `configuration file <https://symbiyosys.readthedocs.io/en/latest/reference.html>`_.

Run this command to Formally Verify the counter example:

.. code-block:: text

    sby -f counter.sby

The ``-f`` switch removes previous test results. You will see some log output from the tool and the last line shows the result: ``FAIL``.
When the tools find a way to break an assertion they generate a trace file. 

* If the test failed bounded model checking (BMC), the trace will be written to counter/engine_0/trace.vcd. 
* If the test failed induction, the trace will be written to counter/engine_0/trace_induct.vcd.

The BMC failed because the solver was able to set the initial value of the count register to a value greater than ``MAX_AMOUNT``. 
Fix this by setting a default value for the register and then run the verification again. 

Formally Verify a simple VHDL example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The tools currently don't support VHDL formal properties. The work-around is to write the formal properties with System Verilog Assertions and then bind
that to the module under test.

Take a look at the example: `counter.vhd <https://github.com/SymbioticEDA/getting-started-FV/blob/master/counter.vhd>`_.
To define the formal properties, we created `counter_vhd.sv <https://github.com/SymbioticEDA/getting-started-FV/blob/master/counter_vhd.sv>`_. In this file we make an assertion that the counter will always be less than ``MAX_AMOUNT``.

`counter.vhd.sby <https://github.com/SymbioticEDA/getting-started-FV/blob/master/counter_vhd.sby>`_ is the `configuration file <https://symbiyosys.readthedocs.io/en/latest/reference.html>`_.

Run this command to Formally Verify the counter example:

.. code-block:: text

    sby -f counter_vhd.sby

The ``-f`` switch removes previous test results. You will see some log output from the tool and the last line shows the result: FAIL.
When the tools find a way to break an assertion they generate a trace file. 

* If the test failed bounded model checking (BMC), the trace will be written to counter_vhd/engine_0/trace.vcd. 
* If the test failed induction, the trace will be written to counter_vhd/engine_0/trace_induct.vcd.

The BMC failed because the solver was able to set the initial value of the count register to a value greater than ``MAX_AMOUNT``. 
Fix this by setting a default value for the register and then run the verification again. 

Resources
~~~~~~~~~

* Symbiyosys docs https://symbiyosys.readthedocs.io/en/latest/
* Some examples to try: https://github.com/YosysHQ/SymbiYosys/tree/master/docs/examples
* Videos and Presentations on Formal Verification: https://www.youtube.com/c/SymbioticEDA
* Dan Gisslequist's blog contains a lot of posts about FV: http://zipcpu.com/
* You can also request a demo or book a training course by contacting us at https://www.symbioticeda.com/
