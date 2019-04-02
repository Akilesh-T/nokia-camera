.class Lcom/android/camera/ui/ModeListView$4;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView;->initializeModeSelectorItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;

.field final synthetic val$selectorItem:Lcom/android/camera/ui/ModeSelectorItem;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeSelectorItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$4;->this$0:Lcom/android/camera/ui/ModeListView;

    iput-object p2, p0, Lcom/android/camera/ui/ModeListView$4;->val$selectorItem:Lcom/android/camera/ui/ModeSelectorItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$4;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$4;->val$selectorItem:Lcom/android/camera/ui/ModeSelectorItem;

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$3600(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeSelectorItem;)V

    .line 933
    return-void
.end method
