.class Lcom/android/camera/MediaSaverImpl$1;
.super Ljava/lang/Object;
.source "MediaSaverImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MediaSaverImpl;->deleteImageFromMediaStore(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field final synthetic val$deleteUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MediaSaverImpl;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$1;->this$0:Lcom/android/camera/MediaSaverImpl;

    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$1;->val$deleteUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$1;->val$deleteUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$1;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->removeFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    .line 711
    return-void
.end method
