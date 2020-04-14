README.txt

Package Contents
YOLOv3Script
├ yolo004.jpg
└ coco_classes.txt
├ Makefile
...
└ yolo_v3.cpp

This code assumes the following conditions
- BSP: VLP64 1.0.1
- Board: RZ/G2E ek874
- meta-renesas-ai: v3.1.0

Compilation
1. To compile the source code, first create SDK that contains meta-onnxruntime in meta-renesasi-ai.
2. Change the environment variable.
  $ source /opt/poky/2.4.3/environment-setup-aarch64-poky-linux
3. Modify Makefile
-WORK=/home/kurata/Projects/VLP64_101_G2E_V2M/work/
+WORK=<Your Yocto Work Directory>
+SDK_ONNX=<your onnx folder>
4. compile
  $ make


Execution Environment
1. Copy the compiled program, "yolo_v3", to the target board.
2. To execute the program, following files are required
  (a) input image: yolo004.jpg
  (b) Label list: coco_classes.txt
  (c) YOLO v3 ONNX model: Model.onnx (Download it from https://onnxzoo.blob.core.windows.net/models/opset_10/yolov3/yolov3.onnx)
3. Place the above (a), (b) and (c) to <app location>
4. To execute the program, use the following command.
$ cd <app location>
$ ./yolo_v3
