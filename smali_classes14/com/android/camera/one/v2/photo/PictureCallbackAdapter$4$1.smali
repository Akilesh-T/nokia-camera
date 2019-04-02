.class Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4$1;
.super Ljava/lang/Object;
.source "PictureCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;->update(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;->this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->access$000(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureSaved(Landroid/net/Uri;)V

    .line 90
    return-void
.end method
