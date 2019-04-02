.class public final enum Lcom/github/faucamp/simplertmp/amf/AmfType;
.super Ljava/lang/Enum;
.source "AmfType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/faucamp/simplertmp/amf/AmfType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum ARRAY:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum BOOLEAN:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum MAP:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum NULL:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum NUMBER:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum OBJECT:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum STRING:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field public static final enum UNDEFINED:Lcom/github/faucamp/simplertmp/amf/AmfType;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/github/faucamp/simplertmp/amf/AmfType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 14
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "NUMBER"

    invoke-direct {v2, v3, v1, v1}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->NUMBER:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 16
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "BOOLEAN"

    invoke-direct {v2, v3, v6, v6}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->BOOLEAN:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 18
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "STRING"

    invoke-direct {v2, v3, v7, v7}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->STRING:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 20
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "OBJECT"

    invoke-direct {v2, v3, v8, v8}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->OBJECT:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 21
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "NULL"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v9}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->NULL:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 22
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "UNDEFINED"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v9, v4}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->UNDEFINED:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 23
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "MAP"

    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->MAP:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 24
    new-instance v2, Lcom/github/faucamp/simplertmp/amf/AmfType;

    const-string v3, "ARRAY"

    const/4 v4, 0x7

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->ARRAY:Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 11
    const/16 v2, 0x8

    new-array v2, v2, [Lcom/github/faucamp/simplertmp/amf/AmfType;

    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfType;->NUMBER:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfType;->BOOLEAN:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfType;->STRING:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfType;->OBJECT:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v3, v2, v8

    const/4 v3, 0x4

    sget-object v4, Lcom/github/faucamp/simplertmp/amf/AmfType;->NULL:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v4, v2, v3

    sget-object v3, Lcom/github/faucamp/simplertmp/amf/AmfType;->UNDEFINED:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v3, v2, v9

    const/4 v3, 0x6

    sget-object v4, Lcom/github/faucamp/simplertmp/amf/AmfType;->MAP:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/github/faucamp/simplertmp/amf/AmfType;->ARRAY:Lcom/github/faucamp/simplertmp/amf/AmfType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->$VALUES:[Lcom/github/faucamp/simplertmp/amf/AmfType;

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/github/faucamp/simplertmp/amf/AmfType;->quickLookupMap:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/github/faucamp/simplertmp/amf/AmfType;->values()[Lcom/github/faucamp/simplertmp/amf/AmfType;

    move-result-object v2

    array-length v3, v2

    .local v0, "amfType":Lcom/github/faucamp/simplertmp/amf/AmfType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 30
    sget-object v4, Lcom/github/faucamp/simplertmp/amf/AmfType;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfType;->value:B

    .line 36
    return-void
.end method

.method public static valueOf(B)Lcom/github/faucamp/simplertmp/amf/AmfType;
    .locals 2
    .param p0, "amfTypeByte"    # B

    .prologue
    .line 43
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfType;

    return-object v0
.end method

.method public static values()[Lcom/github/faucamp/simplertmp/amf/AmfType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->$VALUES:[Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, [Lcom/github/faucamp/simplertmp/amf/AmfType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/faucamp/simplertmp/amf/AmfType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .prologue
    .line 39
    iget-byte v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfType;->value:B

    return v0
.end method
