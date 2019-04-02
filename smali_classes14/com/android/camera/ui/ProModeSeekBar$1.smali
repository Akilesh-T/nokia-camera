.class Lcom/android/camera/ui/ProModeSeekBar$1;
.super Ljava/lang/Object;
.source "ProModeSeekBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ProModeSeekBar;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ProModeSeekBar;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    iput-object p2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 13

    .prologue
    .line 958
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v10, v2, 0x2

    .line 959
    .local v10, "baseWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->getHeight()I

    move-result v2

    neg-int v9, v2

    .line 960
    .local v9, "baseHeight":I
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->getWidth()I

    move-result v12

    .line 961
    .local v12, "viewWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->getHeight()I

    move-result v11

    .line 968
    .local v11, "viewHeight":I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v10

    add-int v2, v9, v11

    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    .line 969
    invoke-static {v3}, Lcom/android/camera/ui/ProModeSeekBar;->access$1300(Lcom/android/camera/ui/ProModeSeekBar;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v10

    add-int v4, v9, v11

    int-to-float v4, v4

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    .line 971
    invoke-virtual {v7}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 972
    .local v0, "bgShader":Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Lcom/android/camera/ui/ProModeSeekBar;->access$1400(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 973
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v2, v10

    add-int v3, v9, v11

    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    .line 974
    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$1300(Lcom/android/camera/ui/ProModeSeekBar;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v10

    add-int v5, v9, v11

    int-to-float v5, v5

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    .line 976
    invoke-static {v8}, Lcom/android/camera/ui/ProModeSeekBar;->access$1500(Lcom/android/camera/ui/ProModeSeekBar;)I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 977
    .local v1, "strokeShader":Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Lcom/android/camera/ui/ProModeSeekBar;->access$1600(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 978
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 979
    return-void
.end method
