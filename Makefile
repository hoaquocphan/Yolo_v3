WORK=/data2/hoaphan/onnxruntime/
SDK_ONNX=/data2/hoaphan/onnxruntime/sdk/sysroots/

onnxruntime: Yolo_v3.cpp
	${CXX} -std=c++14 Yolo_v3.cpp box.cpp image.cpp \
	-DONNX_ML \
	-I /data/jpeglib/ \
	-I /media/sf_Ubuntu/Yolo_v3/ \
	-L /data/onnxruntime/build/Linux/RelWithDebInfo/ \
	-L /data/onnxruntime/build/Linux/RelWithDebInfo/onnx/ \
	-L /data/onnxruntime/build/Linux/RelWithDebInfo/external/protobuf/cmake/ \
	-L /data/onnxruntime/build/Linux/RelWithDebInfo/external/re2/ \
	-L /data/onnxruntime/cmake/ \
	-L /usr/lib/x86_64-linux-gnu/ \
	-lonnxruntime_session \
	-lonnxruntime_providers \
	-lautoml_featurizers \
	-lonnxruntime_framework \
	-lonnxruntime_optimizer \
	-lonnxruntime_graph \
	-lonnxruntime_common \
	-lonnx_proto \
	-lprotobuf \
	-lre2 \
	-lonnxruntime_util \
	-lonnxruntime_mlas \
	-lonnx \
	-ljpeg -ltbb -ltiff -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_photo -lopencv_imgcodecs \
	-lpthread -O2 -fopenmp -ldl ${LDFLAGS} -o Yolo_v3

clean:
	rm -rf *.o Yolo_v3
