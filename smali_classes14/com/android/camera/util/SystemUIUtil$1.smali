.class final Lcom/android/camera/util/SystemUIUtil$1;
.super Ljava/lang/Object;
.source "SystemUIUtil.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/SystemUIUtil;->hideSystemUI(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/util/SystemUIUtil$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 38
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/camera/util/SystemUIUtil$1;->val$decorView:Landroid/view/View;

    const/16 v1, 0x1704

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
