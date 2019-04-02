.class Lcom/android/camera/ui/RadioOptions$1;
.super Ljava/lang/Object;
.source "RadioOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/RadioOptions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RadioOptions;

.field final synthetic val$attrs:Landroid/util/AttributeSet;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RadioOptions;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RadioOptions;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/RadioOptions$1;->this$0:Lcom/android/camera/ui/RadioOptions;

    iput-object p2, p0, Lcom/android/camera/ui/RadioOptions$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/ui/RadioOptions$1;->val$attrs:Landroid/util/AttributeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Lcom/android/camera/ui/RadioOptions$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/RadioOptions$1;->val$attrs:Landroid/util/AttributeSet;

    sget-object v4, Lcom/android/camera2/R$styleable;->RadioOptions:[I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 69
    .local v1, "drawableId":I
    if-lez v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/RadioOptions$1;->this$0:Lcom/android/camera/ui/RadioOptions;

    iget-object v3, p0, Lcom/android/camera/ui/RadioOptions$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Lcom/android/camera/ui/RadioOptions;->access$002(Lcom/android/camera/ui/RadioOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 73
    :cond_0
    return-void
.end method
