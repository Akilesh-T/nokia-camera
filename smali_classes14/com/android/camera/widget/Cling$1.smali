.class Lcom/android/camera/widget/Cling$1;
.super Ljava/lang/Object;
.source "Cling.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Cling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/Cling;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Cling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/Cling;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
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
    .line 40
    iget-object v0, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/Cling;->access$002(Lcom/android/camera/widget/Cling;Z)Z

    .line 42
    iget-object v0, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    invoke-virtual {v0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    .line 43
    return-void
.end method
