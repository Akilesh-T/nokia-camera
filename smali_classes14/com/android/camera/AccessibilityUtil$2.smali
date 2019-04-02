.class Lcom/android/camera/AccessibilityUtil$2;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AccessibilityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AccessibilityUtil;


# direct methods
.method constructor <init>(Lcom/android/camera/AccessibilityUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AccessibilityUtil;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/AccessibilityUtil$2;->this$0:Lcom/android/camera/AccessibilityUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/camera/AccessibilityUtil$2;->this$0:Lcom/android/camera/AccessibilityUtil;

    invoke-static {v1}, Lcom/android/camera/AccessibilityUtil;->access$100(Lcom/android/camera/AccessibilityUtil;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/AccessibilityUtil$2;->this$0:Lcom/android/camera/AccessibilityUtil;

    invoke-static {v2}, Lcom/android/camera/AccessibilityUtil;->access$000(Lcom/android/camera/AccessibilityUtil;)F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/PreviewOverlay;->zoomOut(Landroid/view/View;F)F

    move-result v0

    .line 61
    .local v0, "currentZoom":F
    return-void
.end method
