.class public final enum Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;
.super Ljava/lang/Enum;
.source "FIHSelfieBokeh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SBType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum Z_BIOTAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum Z_CIRCLE:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum Z_HEART:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum Z_PLANAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

.field public static final enum Z_STAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "ADABOKEH"

    invoke-direct {v0, v1, v3}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 60
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "Z_PLANAR"

    invoke-direct {v0, v1, v4}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_PLANAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 61
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "Z_BIOTAR"

    invoke-direct {v0, v1, v5}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_BIOTAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 62
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "Z_CIRCLE"

    invoke-direct {v0, v1, v6}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_CIRCLE:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 63
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "Z_STAR"

    invoke-direct {v0, v1, v7}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_STAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 64
    new-instance v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    const-string v1, "Z_HEART"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_HEART:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_PLANAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_BIOTAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_CIRCLE:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_STAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_HEART:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->$VALUES:[Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->$VALUES:[Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    return-object v0
.end method
