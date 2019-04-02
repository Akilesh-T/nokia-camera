.class Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;
.super Ljava/lang/Object;
.source "ProTutorialDialogLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;->this$1:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;->this$1:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    iget-object v0, v0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;->this$1:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    iget-object v0, v0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;->this$1:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    iget-object v1, v1, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 279
    :cond_0
    return-void
.end method
