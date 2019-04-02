.class public final enum Lcom/pedro/encoder/utils/gl/TranslateTo;
.super Ljava/lang/Enum;
.source "TranslateTo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pedro/encoder/utils/gl/TranslateTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum BOTTOM:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum BOTTOM_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum BOTTOM_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum CENTER:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum TOP:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum TOP_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field public static final enum TOP_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->CENTER:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v6}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v7}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    new-instance v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    const-string v1, "BOTTOM_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/utils/gl/TranslateTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/pedro/encoder/utils/gl/TranslateTo;

    sget-object v1, Lcom/pedro/encoder/utils/gl/TranslateTo;->CENTER:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pedro/encoder/utils/gl/TranslateTo;->LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pedro/encoder/utils/gl/TranslateTo;->RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pedro/encoder/utils/gl/TranslateTo;->TOP_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM_LEFT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pedro/encoder/utils/gl/TranslateTo;->BOTTOM_RIGHT:Lcom/pedro/encoder/utils/gl/TranslateTo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->$VALUES:[Lcom/pedro/encoder/utils/gl/TranslateTo;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pedro/encoder/utils/gl/TranslateTo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pedro/encoder/utils/gl/TranslateTo;

    return-object v0
.end method

.method public static values()[Lcom/pedro/encoder/utils/gl/TranslateTo;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/pedro/encoder/utils/gl/TranslateTo;->$VALUES:[Lcom/pedro/encoder/utils/gl/TranslateTo;

    invoke-virtual {v0}, [Lcom/pedro/encoder/utils/gl/TranslateTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pedro/encoder/utils/gl/TranslateTo;

    return-object v0
.end method
