.class public final enum Lcom/rd/animation/type/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rd/animation/type/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rd/animation/type/AnimationType;

.field public static final enum COLOR:Lcom/rd/animation/type/AnimationType;

.field public static final enum DROP:Lcom/rd/animation/type/AnimationType;

.field public static final enum FILL:Lcom/rd/animation/type/AnimationType;

.field public static final enum NONE:Lcom/rd/animation/type/AnimationType;

.field public static final enum SCALE:Lcom/rd/animation/type/AnimationType;

.field public static final enum SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

.field public static final enum SLIDE:Lcom/rd/animation/type/AnimationType;

.field public static final enum SWAP:Lcom/rd/animation/type/AnimationType;

.field public static final enum THIN_WORM:Lcom/rd/animation/type/AnimationType;

.field public static final enum WORM:Lcom/rd/animation/type/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3
    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->COLOR:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v5}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "WORM"

    invoke-direct {v0, v1, v6}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->WORM:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "SLIDE"

    invoke-direct {v0, v1, v7}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->SLIDE:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "FILL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "THIN_WORM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->THIN_WORM:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "DROP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "SWAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    new-instance v0, Lcom/rd/animation/type/AnimationType;

    const-string v1, "SCALE_DOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/rd/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/rd/animation/type/AnimationType;

    sget-object v1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rd/animation/type/AnimationType;->COLOR:Lcom/rd/animation/type/AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rd/animation/type/AnimationType;->WORM:Lcom/rd/animation/type/AnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rd/animation/type/AnimationType;->SLIDE:Lcom/rd/animation/type/AnimationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/rd/animation/type/AnimationType;->THIN_WORM:Lcom/rd/animation/type/AnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rd/animation/type/AnimationType;->$VALUES:[Lcom/rd/animation/type/AnimationType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rd/animation/type/AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/rd/animation/type/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rd/animation/type/AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/rd/animation/type/AnimationType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/rd/animation/type/AnimationType;->$VALUES:[Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0}, [Lcom/rd/animation/type/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rd/animation/type/AnimationType;

    return-object v0
.end method
