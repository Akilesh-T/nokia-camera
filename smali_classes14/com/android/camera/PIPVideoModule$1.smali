.class Lcom/android/camera/PIPVideoModule$1;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$1;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$1;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$1;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0, p1}, Lcom/android/camera/PIPVideoModule;->access$202(Lcom/android/camera/PIPVideoModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 341
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$1;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 348
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 353
    return-void
.end method
