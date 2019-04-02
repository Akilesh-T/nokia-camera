.class Lcom/android/camera/DualSightPhotoModule$12;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->getEffectChooseCallback()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$12;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$12;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectChooseManager;->showOrHidePanel(Z)V

    .line 1774
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$12;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$3900(Lcom/android/camera/DualSightPhotoModule;)V

    .line 1775
    return-void
.end method
