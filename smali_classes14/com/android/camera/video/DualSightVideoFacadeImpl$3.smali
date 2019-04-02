.class Lcom/android/camera/video/DualSightVideoFacadeImpl$3;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl;->stopBurst()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$3;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$3;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoping()V

    .line 503
    return-void
.end method
