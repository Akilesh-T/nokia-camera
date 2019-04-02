.class Lcom/pedro/encoder/input/video/Camera1ApiManager$1;
.super Ljava/lang/Object;
.source "Camera1ApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/input/video/Camera1ApiManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;


# direct methods
.method constructor <init>(Lcom/pedro/encoder/input/video/Camera1ApiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 123
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v8, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v8}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v8

    iget-object v9, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v9}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    invoke-static {v7, v8}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$002(Lcom/pedro/encoder/input/video/Camera1ApiManager;[B)[B

    .line 124
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Lcom/pedro/encoder/utils/YUVUtil;->preAllocateRotateBuffers(I)V

    .line 125
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Lcom/pedro/encoder/utils/YUVUtil;->preAllocateNv21Buffers(I)V

    .line 126
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$300(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v7

    const v8, 0x32315659

    if-ne v7, v8, :cond_0

    .line 127
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Lcom/pedro/encoder/utils/YUVUtil;->preAllocateYv12Buffers(I)V

    .line 129
    :cond_0
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$500(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 131
    :try_start_0
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v8, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v8}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$600(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v8

    invoke-static {v8}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$402(Lcom/pedro/encoder/input/video/Camera1ApiManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 132
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 133
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$600(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v7

    invoke-static {v7, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 134
    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget v8, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v8, v5, :cond_2

    :goto_0
    invoke-static {v7, v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$702(Lcom/pedro/encoder/input/video/Camera1ApiManager;Z)Z

    .line 136
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 137
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 138
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$300(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 139
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$800(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$900(Lcom/pedro/encoder/input/video/Camera1ApiManager;ILjava/util/List;)[I

    move-result-object v3

    .line 140
    .local v3, "range":[I
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 142
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 143
    .local v4, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    const-string v5, "continuous-picture"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    const-string v5, "continuous-picture"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 154
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 155
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/SurfaceView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 156
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/SurfaceView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 157
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 158
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 166
    :goto_2
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 167
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1402(Lcom/pedro/encoder/input/video/Camera1ApiManager;Z)Z

    .line 168
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1500(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v7}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "range":[I
    .end local v4    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    return-void

    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    move v5, v6

    .line 134
    goto/16 :goto_0

    .line 146
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "range":[I
    .restart local v4    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v5, "auto"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    const-string v5, "auto"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 169
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "range":[I
    .end local v4    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "range":[I
    .restart local v4    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :cond_5
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/TextureView;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 160
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 161
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 162
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 164
    :cond_6
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v6}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1300(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 173
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "range":[I
    .end local v4    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    iget-object v5, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-static {v5}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->access$1500(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Camera1ApiManager need be prepared, Camera1ApiManager not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
