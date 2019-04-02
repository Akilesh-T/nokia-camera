.class Lcom/android/camera/ExpandMultiToggleImageButton$1;
.super Ljava/lang/Object;
.source "ExpandMultiToggleImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ExpandMultiToggleImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ExpandMultiToggleImageButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ExpandMultiToggleImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 66
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v5, v5, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-nez v5, :cond_1

    .line 96
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$100(Lcom/android/camera/ExpandMultiToggleImageButton;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5, v8}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$102(Lcom/android/camera/ExpandMultiToggleImageButton;Z)Z

    .line 70
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 72
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$300(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v5, v5, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    .line 77
    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 76
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040060

    const/4 v7, 0x0

    .line 77
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    .line 78
    .local v3, "layout":Lcom/android/camera/ui/RotateLayout;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$400(Lcom/android/camera/ExpandMultiToggleImageButton;)I

    move-result v5

    invoke-virtual {v3, v5, v8}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 80
    move v2, v0

    .line 81
    .local v2, "index":I
    new-instance v5, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton$1;I)V

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x7f0f01a2

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 90
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v5, v5, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->getImageId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    const v5, 0x7f0f01a3

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v5, v5, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->getTextId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$300(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
