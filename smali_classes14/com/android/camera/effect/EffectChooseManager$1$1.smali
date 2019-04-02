.class Lcom/android/camera/effect/EffectChooseManager$1$1;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectChooseManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/effect/EffectChooseManager$1;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectChooseManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/effect/EffectChooseManager$1;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$1$1;->this$1:Lcom/android/camera/effect/EffectChooseManager$1;

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
    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$1$1;->this$1:Lcom/android/camera/effect/EffectChooseManager$1;

    iget-object v0, v0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$300(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$1$1;->this$1:Lcom/android/camera/effect/EffectChooseManager$1;

    iget-object v0, v0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$400(Lcom/android/camera/effect/EffectChooseManager;)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$1$1;->this$1:Lcom/android/camera/effect/EffectChooseManager$1;

    iget-object v0, v0, Lcom/android/camera/effect/EffectChooseManager$1;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$500(Lcom/android/camera/effect/EffectChooseManager;)V

    goto :goto_0
.end method
