# MNIST handwritting classification using a neural network on the STM32H750B-DK. 
The numbers are drawn on to the LCD touch screen and used as input for the neural network. The user button is used for classification.

STM32CubeProgrammer is required to save neural network weights to external NOR Flash.

## How to use:
1. Open the project using STM32CubeIDE.
2. Connect the STM32H750B-DK board with your pc (using the ST-LINK connection).
3. Debug the project so it gets uploaded onto the STM32H750B-DK board and stop debugging once it does.
4. Open STM32CubeProgrammer and in the External loaders section select the MT25TL01G_STM32H750B-DISCO external loader. It will be used to upload the weights of the neural network into the external NOR flash of the STM32H750B-DK board as the internal flash is not large enough.
5. Connect to the STM32H750B-DK board using the ST-LINK connection in the top right corner of STM32CubeProgrammer.
6. Move to the Erasing & Programming section and under Download select the File path: *DisplayTutorial/mnist_nn_data.bin*.
7. Set the Start Address to: *0x90000000*. Press the Start Programming button.
8. Once the weights are succesfully uploaded onto the board disconect the board using the button in the top right of the screen.
9. The STM32H750B-DK board might have to be restarted a few times using the black RST button untill graphical user interface can be seen on the LCD display.
10. The board is now ready to be used.
