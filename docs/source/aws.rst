AWS machine instance
--------------------

As well as our monthly license model you can setup an Amazon Web Service machine instance and pay by the hour.

Go to the URL https://aws.amazon.com/marketplace/pp/B0862DRQGT
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Click the subscribe button (highlighted with red rectangle).

.. image:: _static/aws/1.png

Continue to configuration
~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: _static/aws/2.png

Choose your region
~~~~~~~~~~~~~~~~~~

.. image:: _static/aws/3.png

Continue to Launch
~~~~~~~~~~~~~~~~~~

.. image:: _static/aws/4.png

Change instance type
~~~~~~~~~~~~~~~~~~~~
Change the EC2 instance type. If you have a new account, you will be limited to the smallest machine: c5.2xlarge.

.. image:: _static/aws/5.png

Choose default security group
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Select default as the security group.

.. image:: _static/aws/6.png

Choose or setup a key pair
~~~~~~~~~~~~~~~~~~~~~~~~~~
If you already have a key pair choose it and skip to page :ref:`Launch the new instance`. 
Otherwise click the link. This will open a new tab where you can create a key pair.

.. image:: _static/aws/7.png

Create the new key pair
~~~~~~~~~~~~~~~~~~~~~~~
Click the button shown.

.. image:: _static/aws/8.png

Name and download the pem key pair
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Then click the create button.

.. image:: _static/aws/9.png

Save the key pair
~~~~~~~~~~~~~~~~~

.. image:: _static/aws/10.png

Your new keypair will be shown in the list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Click the previous tab to continue configuration.

.. image:: _static/aws/11.png

Refresh the key pairs
~~~~~~~~~~~~~~~~~~~~~
Click the refresh button to load your new key.

.. image:: _static/aws/12.png

Choose the new key
~~~~~~~~~~~~~~~~~~

.. image:: _static/aws/13.png

Launch the new instance
~~~~~~~~~~~~~~~~~~~~~~~

.. image:: _static/aws/14.png

Go to the EC2 console
~~~~~~~~~~~~~~~~~~~~~
Click the link shown.

.. image:: _static/aws/15.png

Go to the default security group configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Click the link.

.. image:: _static/aws/16.png

Choose the default group
~~~~~~~~~~~~~~~~~~~~~~~~
Click the link.

.. image:: _static/aws/17.png

Add a new inbound rule
~~~~~~~~~~~~~~~~~~~~~~
Click the button to edit inbound rules.

.. image:: _static/aws/18.png

Add a new rule
~~~~~~~~~~~~~~
Click the button.

.. image:: _static/aws/19.png

Change inbound type to SSH
~~~~~~~~~~~~~~~~~~~~~~~~~~
Click the dropdown and choose SSH.

.. image:: _static/aws/20.png

Setup source IP
~~~~~~~~~~~~~~~
In the source dropdown, choose ‘My IP’.

.. image:: _static/aws/21.png

Save the new rule
~~~~~~~~~~~~~~~~~
Click the button.

.. image:: _static/aws/22.png

View the instances
~~~~~~~~~~~~~~~~~~
Click the instances link.

.. image:: _static/aws/23.png

Connect to the instances
~~~~~~~~~~~~~~~~~~~~~~~~
Click the button.

.. image:: _static/aws/24.png

Copy the chmod text
~~~~~~~~~~~~~~~~~~~
Select and copy the text shown.

.. image:: _static/aws/25.png

Run the command on your downloaded key
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In a terminal, go to where you downloaded the key from step Save the key pair. Then paste in the copied text from step Copy the chmod text.

.. image:: _static/aws/26.png

Copy the ssh text
~~~~~~~~~~~~~~~~~
Select and copy the text shown.

.. image:: _static/aws/27.png

Run the ssh command
~~~~~~~~~~~~~~~~~~~
Paste the command copied from step Copy the ssh text.

.. image:: _static/aws/28.png

Confirm connection
~~~~~~~~~~~~~~~~~~
 Type yes and then enter to connect.

.. image:: _static/aws/29.png

Start yosys to test the tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Type yosys and press enter. You will see the license verified. Type exit to quit.

.. image:: _static/aws/30.png

Terminate instance when finished
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Click the actions button, then choose instance state and terminate.

.. image:: _static/aws/31.png

Confirm termination
~~~~~~~~~~~~~~~~~~~
Click the button to confirm termination of the instance.

.. image:: _static/aws/32.png
