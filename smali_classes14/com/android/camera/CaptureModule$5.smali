.class Lcom/android/camera/CaptureModule$5;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureSaverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteThumbnailAvailable([B)V
    .locals 2
    .param p1, "jpegImage"    # [B

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$5$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$5$1;-><init>(Lcom/android/camera/CaptureModule$5;[B)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method
