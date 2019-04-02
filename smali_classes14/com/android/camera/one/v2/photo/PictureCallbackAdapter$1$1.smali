.class Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1$1;
.super Ljava/lang/Object;
.source "PictureCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;->update(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;->this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->access$000(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onQuickExpose()V

    .line 50
    return-void
.end method
