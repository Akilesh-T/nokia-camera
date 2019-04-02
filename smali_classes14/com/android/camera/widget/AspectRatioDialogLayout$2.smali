.class Lcom/android/camera/widget/AspectRatioDialogLayout$2;
.super Ljava/lang/Object;
.source "AspectRatioDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/AspectRatioDialogLayout;->updateSubviewReferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/AspectRatioDialogLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/AspectRatioDialogLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/AspectRatioDialogLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/widget/AspectRatioDialogLayout$2;->this$0:Lcom/android/camera/widget/AspectRatioDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout$2;->this$0:Lcom/android/camera/widget/AspectRatioDialogLayout;

    sget-object v1, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-static {v0, v1}, Lcom/android/camera/widget/AspectRatioDialogLayout;->access$000(Lcom/android/camera/widget/AspectRatioDialogLayout;Lcom/android/camera/exif/Rational;)V

    .line 95
    return-void
.end method
