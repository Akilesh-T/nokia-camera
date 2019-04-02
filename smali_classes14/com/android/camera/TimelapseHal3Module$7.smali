.class Lcom/android/camera/TimelapseHal3Module$7;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module;->onShutterButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapseHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$7;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "externalUri"    # Landroid/net/Uri;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$7;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$2900(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method
