.class Lcom/android/camera/ui/ModeListView$2$1;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$2;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$2;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$2$1;->this$1:Lcom/android/camera/ui/ModeListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$2$1;->this$1:Lcom/android/camera/ui/ModeListView$2;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$2;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onSettingsSelected()V

    .line 877
    return-void
.end method
