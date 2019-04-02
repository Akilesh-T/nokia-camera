.class public final enum Lcom/android/camera/one/v2/core/CaptureStream$StreamType;
.super Ljava/lang/Enum;
.source "CaptureStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/CaptureStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/core/CaptureStream$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

.field public static final enum CAPTURE:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

.field public static final enum PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

.field public static final enum RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

.field public static final enum UNKNOW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    .line 47
    new-instance v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->CAPTURE:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    .line 48
    new-instance v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    .line 49
    new-instance v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->UNKNOW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    sget-object v1, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->CAPTURE:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->UNKNOW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->$VALUES:[Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/core/CaptureStream$StreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/core/CaptureStream$StreamType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->$VALUES:[Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    return-object v0
.end method
