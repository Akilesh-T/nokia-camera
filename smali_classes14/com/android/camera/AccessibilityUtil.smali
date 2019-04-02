.class public Lcom/android/camera/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# static fields
.field private static final ACCESSIBILITY_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.google"

.field private static final MIN_ZOOM:F = 1.0f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mMaxZoom:F

.field private mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private zoomInListener:Landroid/view/View$OnClickListener;

.field private zoomOutListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AccessibilityUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/AccessibilityUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/PreviewOverlay;Landroid/view/View;)V
    .locals 1
    .param p1, "previewOverlay"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/camera/AccessibilityUtil$1;

    invoke-direct {v0, p0}, Lcom/android/camera/AccessibilityUtil$1;-><init>(Lcom/android/camera/AccessibilityUtil;)V

    iput-object v0, p0, Lcom/android/camera/AccessibilityUtil;->zoomInListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v0, Lcom/android/camera/AccessibilityUtil$2;

    invoke-direct {v0, p0}, Lcom/android/camera/AccessibilityUtil$2;-><init>(Lcom/android/camera/AccessibilityUtil;)V

    iput-object v0, p0, Lcom/android/camera/AccessibilityUtil;->zoomOutListener:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p1, p0, Lcom/android/camera/AccessibilityUtil;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AccessibilityUtil;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AccessibilityUtil;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/AccessibilityUtil;->mMaxZoom:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/AccessibilityUtil;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AccessibilityUtil;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/AccessibilityUtil;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method private containsGoogleAccessibilityService()Z
    .locals 6

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/AccessibilityUtil;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 112
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v4, -0x1

    .line 114
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 117
    .local v1, "enabledService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "serviceId":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    const/4 v4, 0x1

    .line 123
    .end local v1    # "enabledService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "serviceId":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/AccessibilityUtil;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 101
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public hideZoomUI()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public showZoomUI(F)V
    .locals 0
    .param p1, "maxZoom"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/AccessibilityUtil;->mMaxZoom:F

    .line 82
    return-void
.end method
