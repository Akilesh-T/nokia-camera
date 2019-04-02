.class Lcom/android/camera/ui/AdvancedModeListView$3;
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

.field final synthetic val$modeItem:Lcom/android/camera/ui/AdvancedModeItem;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/AdvancedModeItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$3;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iput-object p2, p0, Lcom/android/camera/ui/AdvancedModeListView$3;->val$modeItem:Lcom/android/camera/ui/AdvancedModeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 605
    invoke-static {}, Lcom/android/camera/ui/AdvancedModeListView;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "on modeItem click"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$3;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$3;->val$modeItem:Lcom/android/camera/ui/AdvancedModeItem;

    invoke-static {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1600(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    .line 607
    return-void
.end method
