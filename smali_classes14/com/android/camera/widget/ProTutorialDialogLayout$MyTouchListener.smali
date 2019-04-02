.class Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;
.super Ljava/lang/Object;
.source "ProTutorialDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p2, "x1"    # Lcom/android/camera/widget/ProTutorialDialogLayout$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$600(Lcom/android/camera/widget/ProTutorialDialogLayout;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
