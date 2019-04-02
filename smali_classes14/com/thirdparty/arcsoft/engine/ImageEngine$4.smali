.class Lcom/thirdparty/arcsoft/engine/ImageEngine$4;
.super Ljava/lang/Object;
.source "ImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

.field final synthetic val$cameraType:Lcom/android/camera/one/CameraType;

.field final synthetic val$data:[B

.field final synthetic val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

.field final synthetic val$frameNum:I

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$cameraType:Lcom/android/camera/one/CameraType;

    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iput p4, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$frameNum:I

    iput-object p5, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$data:[B

    iput-boolean p6, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$sync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$cameraType:Lcom/android/camera/one/CameraType;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$frameNum:I

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$data:[B

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;->val$sync:Z

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->requestAddFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    goto :goto_0
.end method
