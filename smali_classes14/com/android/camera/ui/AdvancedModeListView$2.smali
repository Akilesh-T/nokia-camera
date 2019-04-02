.class Lcom/android/camera/ui/AdvancedModeListView$2;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView;->init(Ljava/util/List;Z)V
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
    .line 552
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$2;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$2;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView$2;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$2;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-virtual {v2}, Lcom/android/camera/ui/AdvancedModeListView;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AdvancedModeListView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 556
    return-void
.end method
