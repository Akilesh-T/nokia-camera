.class Lcom/android/camera/ui/RotateTextToast$2;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateTextToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RotateTextToast;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0}, Lcom/android/camera/util/AnimationUtil;->fadeOut(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, v1, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iput-object v2, v0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$2;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iput-object v2, v0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    .line 88
    return-void
.end method
