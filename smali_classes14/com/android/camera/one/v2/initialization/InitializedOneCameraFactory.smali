.class public Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;
.super Ljava/lang/Object;
.source "InitializedOneCameraFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mOneCamera:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "InitOneCamFactory"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Ljava/util/List;Ljava/util/List;Lcom/android/camera/async/MainThread;Lcom/android/camera/async/HandlerFactory;FFLjava/util/List;Lcom/android/camera/ui/motion/LinearScale;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 62
    .param p1, "deviceLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraStarter"    # Lcom/android/camera/one/v2/initialization/CameraStarter;
    .param p3, "device"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p4, "slaveDevice"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p5, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p6, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p9, "mainThreadExecutor"    # Lcom/android/camera/async/MainThread;
    .param p10, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p11, "maxZoom"    # F
    .param p12, "slaveMaxZoom"    # F
    .param p14, "lensRange"    # Lcom/android/camera/ui/motion/LinearScale;
    .param p15, "direction"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/initialization/CameraStarter;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/async/MainThread;",
            "Lcom/android/camera/async/HandlerFactory;",
            "FF",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/ui/motion/LinearScale;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p7, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p8, "slaveOutputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p13, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v6, "CameraHandler"

    move-object/from16 v0, p10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v59

    .line 112
    .local v59, "cameraHandler":Landroid/os/Handler;
    new-instance v25, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 113
    .local v25, "mPictureTaker":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/PictureTaker;>;"
    new-instance v60, Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;

    move-object/from16 v0, v60

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 115
    .local v60, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTaker;
    new-instance v26, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 116
    .local v26, "mManualAutoFocus":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;>;"
    new-instance v40, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 119
    .local v40, "manualAutoFocus":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    new-instance v27, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 120
    .local v27, "mSceneDetector":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/SceneDetector;>;"
    new-instance v41, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 122
    .local v41, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    new-instance v28, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 123
    .local v28, "mFlashDetector":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/FlashDetector;>;"
    new-instance v42, Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 125
    .local v42, "flashDetector":Lcom/android/camera/one/v2/photo/FlashDetector;
    new-instance v29, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 126
    .local v29, "mBokehResultProvider":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/BokehResultProvider;>;"
    new-instance v43, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 128
    .local v43, "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    new-instance v30, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 129
    .local v30, "mSceneRecognitionProvider":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;>;"
    new-instance v44, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;-><init>(Lcom/android/camera/async/ConcurrentState;)V

    .line 135
    .local v44, "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    new-instance v53, Lcom/android/camera/async/ConcurrentState;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 136
    .local v53, "zoomState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Float;>;"
    new-instance v54, Lcom/android/camera/async/ConcurrentState;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v54, "slaveZoomState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Float;>;"
    new-instance v24, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 139
    .local v24, "readyState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    new-instance v31, Lcom/android/camera/async/Listenable;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/async/Listenable;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V

    .line 141
    .local v31, "readyStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 143
    new-instance v13, Lcom/android/camera/async/ConcurrentState;

    new-instance v6, Landroid/util/Pair;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/graphics/PointF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v13, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 144
    .local v13, "afState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    new-instance v15, Lcom/android/camera/async/ConcurrentState;

    new-instance v6, Lcom/android/camera/one/OneCamera$LengsState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/one/OneCamera$LengsState;-><init>(FZ)V

    invoke-direct {v15, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 145
    .local v15, "lengsState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/OneCamera$LengsState;>;"
    new-instance v58, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 146
    .local v58, "afMode":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v17, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 150
    .local v17, "faceData":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<[Landroid/hardware/camera2/params/Face;>;"
    new-instance v3, Lcom/android/camera/one/v2/initialization/MetadataCallback;

    .line 151
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v4

    new-instance v6, Lcom/android/camera/async/FilteredUpdatable;

    invoke-direct {v6, v13}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v7, Lcom/android/camera/async/FilteredUpdatable;

    invoke-direct {v7, v15}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v8, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v58

    invoke-direct {v8, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v9, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    move-object/from16 v5, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/one/v2/initialization/MetadataCallback;-><init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    .line 163
    .local v3, "metadataCallback":Lcom/android/camera/one/v2/initialization/MetadataCallback;
    if-eqz p4, :cond_0

    .line 164
    new-instance v19, Lcom/android/camera/async/ConcurrentState;

    new-instance v6, Landroid/util/Pair;

    const/4 v7, 0x0

    .line 165
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/graphics/PointF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 166
    .local v19, "slaveAfState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    new-instance v20, Lcom/android/camera/async/ConcurrentState;

    new-instance v6, Lcom/android/camera/one/OneCamera$LengsState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/one/OneCamera$LengsState;-><init>(FZ)V

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 167
    .local v20, "slaveLengsState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/OneCamera$LengsState;>;"
    new-instance v61, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 168
    .local v61, "slaveAfMode":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v21, Lcom/android/camera/async/ConcurrentState;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 169
    .local v21, "slavefaceData":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<[Landroid/hardware/camera2/params/Face;>;"
    new-instance v4, Lcom/android/camera/one/v2/initialization/MetadataCallback;

    .line 170
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v5

    new-instance v7, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v8, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v9, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v61

    invoke-direct {v9, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    new-instance v10, Lcom/android/camera/async/FilteredUpdatable;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/camera/async/FilteredUpdatable;-><init>(Lcom/android/camera/async/Updatable;)V

    move-object/from16 v6, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/one/v2/initialization/MetadataCallback;-><init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    .line 186
    .local v4, "slaveMetadataCallback":Lcom/android/camera/one/v2/initialization/MetadataCallback;
    :goto_0
    new-instance v12, Lcom/android/camera/async/Listenable;

    move-object/from16 v0, p9

    invoke-direct {v12, v13, v0}, Lcom/android/camera/async/Listenable;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V

    .line 188
    .local v12, "afStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 189
    new-instance v14, Lcom/android/camera/async/Listenable;

    move-object/from16 v0, p9

    invoke-direct {v14, v15, v0}, Lcom/android/camera/async/Listenable;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V

    .line 191
    .local v14, "lengsStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Lcom/android/camera/one/OneCamera$LengsState;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 192
    new-instance v16, Lcom/android/camera/async/Listenable;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/async/Listenable;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V

    .line 194
    .local v16, "faceDataListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<[Landroid/hardware/camera2/params/Face;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 207
    new-instance v5, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, v59

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Landroid/os/Handler;)V

    .line 209
    .local v5, "captureSessionCreator":Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;
    new-instance v32, Lcom/android/camera/one/v2/initialization/PreviewStarter;

    if-eqz p4, :cond_1

    move-object/from16 v34, p8

    :goto_1
    new-instance v6, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, v53

    move-object/from16 v10, v54

    move-object v11, v3

    move-object/from16 v18, p6

    move-object/from16 v22, p2

    move-object/from16 v23, v4

    invoke-direct/range {v6 .. v31}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;-><init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/initialization/MetadataCallback;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/initialization/MetadataCallback;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;)V

    move-object/from16 v33, p7

    move-object/from16 v35, p5

    move-object/from16 v36, p6

    move-object/from16 v37, v5

    move-object/from16 v38, p2

    move-object/from16 v39, v6

    invoke-direct/range {v32 .. v39}, Lcom/android/camera/one/v2/initialization/PreviewStarter;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;)V

    .line 325
    .local v32, "mPreviewStarter":Lcom/android/camera/one/v2/initialization/PreviewStarter;
    new-instance v56, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;

    move-object/from16 v0, v56

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;-><init>(Ljava/util/List;)V

    .line 330
    .local v56, "previewSizeSelector":Lcom/android/camera/one/PreviewSizeSelector;
    new-instance v33, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v34

    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v35

    :goto_2
    move-object/from16 v36, p5

    move-object/from16 v37, p6

    move-object/from16 v38, p1

    move-object/from16 v39, v60

    move-object/from16 v45, p14

    move-object/from16 v46, p9

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v49, v31

    move-object/from16 v50, v16

    move/from16 v51, p11

    move/from16 v52, p12

    move-object/from16 v55, p15

    move-object/from16 v57, v32

    invoke-direct/range {v33 .. v57}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;-><init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/photo/BokehResultProvider;Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;Lcom/android/camera/ui/motion/LinearScale;Ljava/util/concurrent/Executor;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;FFLcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/PreviewSizeSelector;Lcom/android/camera/one/v2/initialization/PreviewStarter;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->mOneCamera:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .line 331
    return-void

    .line 177
    .end local v4    # "slaveMetadataCallback":Lcom/android/camera/one/v2/initialization/MetadataCallback;
    .end local v5    # "captureSessionCreator":Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;
    .end local v12    # "afStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    .end local v14    # "lengsStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Lcom/android/camera/one/OneCamera$LengsState;>;"
    .end local v16    # "faceDataListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<[Landroid/hardware/camera2/params/Face;>;"
    .end local v19    # "slaveAfState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    .end local v20    # "slaveLengsState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/OneCamera$LengsState;>;"
    .end local v21    # "slavefaceData":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<[Landroid/hardware/camera2/params/Face;>;"
    .end local v32    # "mPreviewStarter":Lcom/android/camera/one/v2/initialization/PreviewStarter;
    .end local v56    # "previewSizeSelector":Lcom/android/camera/one/PreviewSizeSelector;
    .end local v61    # "slaveAfMode":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    :cond_0
    const/16 v19, 0x0

    .line 178
    .restart local v19    # "slaveAfState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    const/16 v20, 0x0

    .line 179
    .restart local v20    # "slaveLengsState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/OneCamera$LengsState;>;"
    const/16 v61, 0x0

    .line 180
    .restart local v61    # "slaveAfMode":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 181
    .restart local v21    # "slavefaceData":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<[Landroid/hardware/camera2/params/Face;>;"
    const/4 v4, 0x0

    .restart local v4    # "slaveMetadataCallback":Lcom/android/camera/one/v2/initialization/MetadataCallback;
    goto/16 :goto_0

    .line 209
    .restart local v5    # "captureSessionCreator":Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;
    .restart local v12    # "afStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    .restart local v14    # "lengsStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Lcom/android/camera/one/OneCamera$LengsState;>;"
    .restart local v16    # "faceDataListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<[Landroid/hardware/camera2/params/Face;>;"
    :cond_1
    const/16 v34, 0x0

    goto :goto_1

    .line 330
    .restart local v32    # "mPreviewStarter":Lcom/android/camera/one/v2/initialization/PreviewStarter;
    .restart local v56    # "previewSizeSelector":Lcom/android/camera/one/PreviewSizeSelector;
    :cond_2
    const/16 v35, 0x0

    goto :goto_2
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public provideOneCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->mOneCamera:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    return-object v0
.end method
