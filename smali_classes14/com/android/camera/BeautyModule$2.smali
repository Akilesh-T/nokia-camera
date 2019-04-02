.class Lcom/android/camera/BeautyModule$2;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/camera/BeautyModule$2;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule$2;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BeautyModule$2;->onMediaSaved(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    if-eqz p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$600(Lcom/android/camera/BeautyModule;)V

    goto :goto_0
.end method

.method public setNeedThumbnail(Z)V
    .locals 1
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/BeautyModule$2;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    return-void
.end method
