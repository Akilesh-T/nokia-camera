.class Lcom/android/camera/PanoramaHal3Module$3;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureSaverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$3;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteThumbnailAvailable([B)V
    .locals 2
    .param p1, "jpegImage"    # [B

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$3;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoramaHal3Module$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/PanoramaHal3Module$3$1;-><init>(Lcom/android/camera/PanoramaHal3Module$3;[B)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method
