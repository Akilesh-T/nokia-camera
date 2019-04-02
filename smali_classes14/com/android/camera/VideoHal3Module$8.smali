.class Lcom/android/camera/VideoHal3Module$8;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->onShutterButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$8;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "externalUri"    # Landroid/net/Uri;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$8;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$3100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method
