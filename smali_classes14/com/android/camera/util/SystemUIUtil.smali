.class public Lcom/android/camera/util/SystemUIUtil;
.super Ljava/lang/Object;
.source "SystemUIUtil.java"


# static fields
.field public static final CURRENT_API_VERSION:I

.field public static final HIDE_SYSTEM_UI_FLAG:I = 0x1704


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/camera/util/SystemUIUtil;->CURRENT_API_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 53
    .local v1, "resourceId":I
    const-string v3, "0"

    const-string v4, "qemu.hw.mainkeys"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 56
    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method public static hideSystemUI(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "decorView":Landroid/view/View;
    sget v1, Lcom/android/camera/util/SystemUIUtil;->CURRENT_API_VERSION:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    const/16 v1, 0x1704

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    new-instance v1, Lcom/android/camera/util/SystemUIUtil$1;

    invoke-direct {v1, v0}, Lcom/android/camera/util/SystemUIUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static isNaviHide(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_can_hiden"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
