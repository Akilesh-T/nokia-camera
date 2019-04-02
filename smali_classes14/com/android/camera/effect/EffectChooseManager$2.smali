.class Lcom/android/camera/effect/EffectChooseManager$2;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/ui/EffectChooseRootVisibilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectChooseManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectChooseManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$2;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    iput-object p2, p0, Lcom/android/camera/effect/EffectChooseManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$2;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->access$202(Lcom/android/camera/effect/EffectChooseManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 234
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$2;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$300(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
