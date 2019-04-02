.class Lcom/android/camera/ui/AdvancedModeListView$6$1;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/AdvancedModeListView$6;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/AdvancedModeListView$6;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$6$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$6$1;->this$1:Lcom/android/camera/ui/AdvancedModeListView$6;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView$6;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onSettingsSelected()V

    .line 692
    return-void
.end method
