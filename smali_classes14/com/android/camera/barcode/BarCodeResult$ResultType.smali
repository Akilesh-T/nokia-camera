.class public final enum Lcom/android/camera/barcode/BarCodeResult$ResultType;
.super Ljava/lang/Enum;
.source "BarCodeResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/barcode/BarCodeResult$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum DRIVER_LICENSE:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum PRODUCT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum VIN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field public static final enum WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 123
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 124
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->PRODUCT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 125
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 126
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 127
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "GEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 128
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "TEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 129
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "SMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 130
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "CALENDAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 131
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "WIFI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 132
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "ISBN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 133
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "DRIVER_LICENSE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->DRIVER_LICENSE:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 134
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    const-string v1, "VIN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->VIN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    .line 121
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/camera/barcode/BarCodeResult$ResultType;

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->PRODUCT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->DRIVER_LICENSE:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->VIN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->$VALUES:[Lcom/android/camera/barcode/BarCodeResult$ResultType;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/barcode/BarCodeResult$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/barcode/BarCodeResult$ResultType;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/camera/barcode/BarCodeResult$ResultType;->$VALUES:[Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v0}, [Lcom/android/camera/barcode/BarCodeResult$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/barcode/BarCodeResult$ResultType;

    return-object v0
.end method
