.class Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;
.super Ljava/lang/Object;
.source "DualSightImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

.field final synthetic val$data:[B

.field final synthetic val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;Lcom/android/camera/one/DualSightCamType;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 108
    const/4 v9, 0x0

    .line 109
    .local v9, "settableFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$2;->$SwitchMap$com$android$camera$one$DualSightCamType:[I

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1}, Lcom/android/camera/one/DualSightCamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    if-nez v9, :cond_0

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOW DualSightCamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 137
    :goto_1
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v9

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v9

    .line 115
    goto :goto_0

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$600(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/android/camera/opengl/image/ImageGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$data:[B

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v3}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$200(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)I

    move-result v3

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v4}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$300(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Z

    move-result v4

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v5}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$400(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)I

    move-result v5

    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-static {v6}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/android/camera/util/Size;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/opengl/image/ImageGenerator;->generateImageBitmap([BLcom/android/camera/one/DualSightCamType;IZILcom/android/camera/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 127
    .local v8, "readyToDrawBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 128
    invoke-static {}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$700()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readyToDrawBitmap ready : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v9, v8}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    .end local v8    # "readyToDrawBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v9, v7}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 131
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "readyToDrawBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->access$700()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateImageBitmap get null image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateImageBitmap get null image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
