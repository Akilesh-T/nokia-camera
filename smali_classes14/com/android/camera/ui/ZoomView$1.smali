.class Lcom/android/camera/ui/ZoomView$1;
.super Ljava/lang/Object;
.source "ZoomView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ZoomView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ZoomView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView$1;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 184
    sub-int v1, p4, p2

    .line 185
    .local v1, "w":I
    sub-int v0, p5, p3

    .line 186
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/camera/ui/ZoomView$1;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v2}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView$1;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v2}, Lcom/android/camera/ui/ZoomView;->access$400(Lcom/android/camera/ui/ZoomView;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ZoomView$1;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v2, v1}, Lcom/android/camera/ui/ZoomView;->access$402(Lcom/android/camera/ui/ZoomView;I)I

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/ZoomView$1;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v2, v0}, Lcom/android/camera/ui/ZoomView;->access$502(Lcom/android/camera/ui/ZoomView;I)I

    .line 190
    :cond_1
    return-void
.end method
