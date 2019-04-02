.class Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6$1;
.super Ljava/lang/Object;
.source "PictureCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;->update(Ljava/lang/Float;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;

.field final synthetic val$progress:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;Ljava/lang/Float;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6$1;->val$progress:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6$1;->this$1:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;->this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->access$000(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6$1;->val$progress:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onTakePictureProgress(F)V

    .line 118
    return-void
.end method
