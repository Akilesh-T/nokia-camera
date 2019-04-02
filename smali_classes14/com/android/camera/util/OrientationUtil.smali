.class public Lcom/android/camera/util/OrientationUtil;
.super Ljava/lang/Object;
.source "OrientationUtil.java"


# static fields
.field public static final ORIENTATION_HYSTERESIS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 53
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    :pswitch_0
    return v1

    .line 57
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 59
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 61
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 44
    :goto_0
    if-eqz v0, :cond_0

    .line 45
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 47
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 40
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 41
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 42
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
