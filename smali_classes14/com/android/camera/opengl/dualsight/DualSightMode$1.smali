.class synthetic Lcom/android/camera/opengl/dualsight/DualSightMode$1;
.super Ljava/lang/Object;
.source "DualSightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/dualsight/DualSightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightMode;->values()[Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
