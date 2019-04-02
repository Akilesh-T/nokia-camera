.class Lcom/android/camera/ui/AdvancedModeListView$4;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView;->initializeModeSelectorItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$4;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$4;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onBackPressed()Z

    .line 635
    return-void
.end method
