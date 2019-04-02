.class Lcom/android/camera/effect/EffectChooseManager$1;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectChooseManager;Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    iput-object p2, p0, Lcom/android/camera/effect/EffectChooseManager$1;->val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$000(Lcom/android/camera/effect/EffectChooseManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/android/camera/effect/EffectChooseManager;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Inflate Effect Panel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$1;->val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;

    const v1, 0x7f04003b

    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$200(Lcom/android/camera/effect/EffectChooseManager;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$1$1;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$1$1;-><init>(Lcom/android/camera/effect/EffectChooseManager$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectChooseManager;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Inflate Effect isReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
