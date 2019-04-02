.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 812
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera device \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 817
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera device \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' encountered error code \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 821
    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 823
    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v9, 0x2

    .line 786
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$902(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 787
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 790
    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 791
    .local v6, "props":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 792
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    .line 793
    .local v5, "characteristics":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 794
    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;ILandroid/hardware/camera2/CameraDevice;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 793
    invoke-static {v8, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$602(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 795
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    new-instance v1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1302(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 796
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 797
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 796
    invoke-static {v1, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 798
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 799
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_1

    const/4 v0, 0x1

    .line 798
    :goto_0
    invoke-static {v1, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1502(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Z)Z

    .line 801
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)V

    .line 802
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v5    # "characteristics":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .end local v6    # "props":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    :goto_1
    return-void

    .line 799
    .restart local v5    # "characteristics":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .restart local v6    # "props":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 803
    .end local v5    # "characteristics":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .end local v6    # "props":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v7

    .line 804
    .local v7, "ex":Landroid/hardware/camera2/CameraAccessException;
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 805
    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto :goto_1
.end method
