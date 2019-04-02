.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$1;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$1;->this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$1;->this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->stopBurst()Z

    .line 350
    return-void
.end method
