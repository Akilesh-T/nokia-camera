.class Lcom/android/camera/MultiToggleImageButton$3;
.super Ljava/lang/Object;
.source "MultiToggleImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MultiToggleImageButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MultiToggleImageButton;


# direct methods
.method constructor <init>(Lcom/android/camera/MultiToggleImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton$3;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$3;->this$0:Lcom/android/camera/MultiToggleImageButton;

    iget-boolean v0, v0, Lcom/android/camera/MultiToggleImageButton;->mClickEnabled:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton$3;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/MultiToggleImageButton;->access$000(Lcom/android/camera/MultiToggleImageButton;)V

    .line 348
    :cond_0
    return-void
.end method
