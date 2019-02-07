while true
do
  # (1) prompt user, and read command line argument
  read -p "" framework model

  # (2) handle the input we were given
  case $framework in
   [keras]* )
          echo "Converting keras model $model to model.onnx."
           break;;

   [lightgbm]* )
          echo "Converting lightgbm model to model.onnx."
            break;;

    [exit]* ) echo "Exiting model conversion script."
              exit;;

   * )
   echo "Please enter a valid framework name from the following options:
        keras
        lightgbm
        sklearn
        ...
        exit";;
  esac

  convert_function="convert_"
  convert_function+=$framework

done
