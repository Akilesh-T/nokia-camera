.class Lcom/android/camera/ExpandMultiToggleImageButton$2;
.super Ljava/lang/Object;
.source "ExpandMultiToggleImageButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ExpandMultiToggleImageButton;->init(Landroid/content/Context;)V
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
    .line 115
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 118
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v4, v4, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v8

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$700(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-boolean v4, v4, Lcom/android/camera/ExpandMultiToggleImageButton;->mClickEnabled:Z

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 122
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-virtual {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040061

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$202(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 124
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/android/camera/ExpandMultiToggleImageButton$2$1;

    invoke-direct {v5, p0}, Lcom/android/camera/ExpandMultiToggleImageButton$2$1;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton$2;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    const v6, 0x7f0f01a5

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$002(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 131
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    new-instance v5, Lcom/android/camera/ui/TouchCircleDrawable;

    iget-object v6, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-virtual {v6}, Lcom/android/camera/ExpandMultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Lcom/android/camera/ui/TouchCircleDrawable;-><init>(Landroid/content/res/Resources;Z)V

    invoke-static {v4, v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$802(Lcom/android/camera/ExpandMultiToggleImageButton;Lcom/android/camera/ui/TouchCircleDrawable;)Lcom/android/camera/ui/TouchCircleDrawable;

    .line 132
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$900(Lcom/android/camera/ExpandMultiToggleImageButton;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 133
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$700(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$700(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 136
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$100(Lcom/android/camera/ExpandMultiToggleImageButton;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$900(Lcom/android/camera/ExpandMultiToggleImageButton;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    .line 142
    .local v3, "visible":I
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v4, v4, Lcom/android/camera/ExpandMultiToggleImageButton;->mOnClickListener:Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;

    if-eqz v4, :cond_4

    .line 143
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v4, v4, Lcom/android/camera/ExpandMultiToggleImageButton;->mOnClickListener:Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;

    invoke-interface {v4}, Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;->onClick()V

    .line 145
    :cond_4
    if-nez v3, :cond_5

    .line 146
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4, v8, p1, v9}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$600(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;Z)V

    goto/16 :goto_0

    .line 148
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$700(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f0f00cf

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 149
    .local v2, "modeOptionsExpandRoot":Landroid/view/ViewGroup;
    if-eqz v2, :cond_7

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 151
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 153
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$1002(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 158
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v4, v9, p1, v9}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$600(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;Z)V

    goto/16 :goto_0
.end method
