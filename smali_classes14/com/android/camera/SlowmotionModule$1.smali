.class Lcom/android/camera/SlowmotionModule$1;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$1;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$1;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0, p1}, Lcom/android/camera/SlowmotionModule;->access$102(Lcom/android/camera/SlowmotionModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 212
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$1;->this$0:Lcom/android/camera/SlowmotionModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/SlowmotionModule;->access$202(Lcom/android/camera/SlowmotionModule;Z)Z

    .line 213
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$1;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 225
    return-void
.end method
