.class public final enum Lcom/android/camera/opengl/dualsight/DualSightMode;
.super Ljava/lang/Enum;
.source "DualSightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/opengl/dualsight/DualSightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field public static final enum NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "NORMAL_MAIN"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "NORMAL_SLAVE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "MAIN_UP_SLAVE_DOWN"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "MAIN_DOWN_SLAVE_UP"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "MAIN_FULL_SLAVE_SUB"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    const-string v1, "MAIN_SUB_SLAVE_FULL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/opengl/dualsight/DualSightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/opengl/dualsight/DualSightMode;

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->$VALUES:[Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/android/camera/opengl/dualsight/DualSightMode;->value:I

    .line 15
    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/opengl/dualsight/DualSightMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 33
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_3
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_4
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_5
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static fromValue(I)Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 44
    :pswitch_2
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 48
    :pswitch_4
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 50
    :pswitch_5
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isPipMode(Lcom/android/camera/opengl/dualsight/DualSightMode;)Z
    .locals 1
    .param p0, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleSight(Lcom/android/camera/opengl/dualsight/DualSightMode;)Z
    .locals 2
    .param p0, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    invoke-virtual {p0}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSubAndFullMode(Lcom/android/camera/opengl/dualsight/DualSightMode;)Z
    .locals 1
    .param p0, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->$VALUES:[Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v0}, [Lcom/android/camera/opengl/dualsight/DualSightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightMode;->value:I

    return v0
.end method
