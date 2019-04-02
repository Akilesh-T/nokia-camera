.class public final enum Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
.super Ljava/lang/Enum;
.source "PlatformUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/utils/PlatformUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/utils/PlatformUtil$Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

.field public static final enum MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

.field public static final enum QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

.field public static final enum SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

.field public static final enum UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    new-instance v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    const-string v1, "QUALCOMM"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    new-instance v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    new-instance v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    const-string v1, "SPREADTRUM"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->$VALUES:[Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->$VALUES:[Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    return-object v0
.end method
