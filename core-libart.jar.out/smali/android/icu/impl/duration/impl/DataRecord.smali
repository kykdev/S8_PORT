.class public Landroid/icu/impl/duration/impl/DataRecord;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EGender;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;,
        Landroid/icu/impl/duration/impl/DataRecord$EPluralization;,
        Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;,
        Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    }
.end annotation


# instance fields
.field allowZero:Z

.field countSep:Ljava/lang/String;

.field decimalHandling:B

.field decimalSep:C

.field digitPrefix:Ljava/lang/String;

.field fifteenMinutes:Ljava/lang/String;

.field fiveMinutes:Ljava/lang/String;

.field fractionHandling:B

.field genders:[B

.field halfNames:[Ljava/lang/String;

.field halfPlacements:[B

.field halfSupport:[B

.field halves:[Ljava/lang/String;

.field measures:[Ljava/lang/String;

.field mediumNames:[Ljava/lang/String;

.field numberNames:[Ljava/lang/String;

.field numberSystem:B

.field omitDualCount:Z

.field omitSingularCount:Z

.field optSuffixes:[Ljava/lang/String;

.field pl:B

.field pluralNames:[[Ljava/lang/String;

.field requiresDigitSeparator:Z

.field requiresSkipMarker:[Z

.field rqdSuffixes:[Ljava/lang/String;

.field scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

.field shortNames:[Ljava/lang/String;

.field shortUnitSep:Ljava/lang/String;

.field singularNames:[Ljava/lang/String;

.field skippedUnitMarker:Ljava/lang/String;

.field unitSep:[Ljava/lang/String;

.field unitSepRequiresDP:[Z

.field useMilliseconds:B

.field weeksAloneOnly:Z

.field zero:C

.field zeroHandling:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;
    .locals 6

    const-string/jumbo v3, "DataRecord"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/icu/impl/duration/impl/DataRecord;

    invoke-direct {v2}, Landroid/icu/impl/duration/impl/DataRecord;-><init>()V

    const-string/jumbo v3, "pl"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const-string/jumbo v3, "pluralName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringTable(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    const-string/jumbo v3, "gender"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    const-string/jumbo v3, "singularName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    const-string/jumbo v3, "halfName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    const-string/jumbo v3, "numberName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    const-string/jumbo v3, "mediumName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    const-string/jumbo v3, "shortName"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    const-string/jumbo v3, "measure"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    const-string/jumbo v3, "rqdSuffix"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    const-string/jumbo v3, "optSuffix"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    const-string/jumbo v3, "halves"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    const-string/jumbo v3, "halfPlacement"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    const-string/jumbo v3, "halfSupport"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    const-string/jumbo v3, "fifteenMinutes"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    const-string/jumbo v3, "fiveMinutes"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    const-string/jumbo v3, "requiresDigitSeparator"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const-string/jumbo v3, "digitPrefix"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    const-string/jumbo v3, "countSep"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    const-string/jumbo v3, "shortUnitSep"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    const-string/jumbo v3, "unitSep"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    const-string/jumbo v3, "unitSepRequiresDP"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    const-string/jumbo v3, "requiresSkipMarker"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    const-string/jumbo v3, "numberSystem"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    const-string/jumbo v3, "zero"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v3

    iput-char v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    const-string/jumbo v3, "decimalSep"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v3

    iput-char v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    const-string/jumbo v3, "omitSingularCount"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    const-string/jumbo v3, "omitDualCount"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    const-string/jumbo v3, "zeroHandling"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    const-string/jumbo v3, "decimalHandling"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    const-string/jumbo v3, "fractionHandling"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    const-string/jumbo v3, "skippedUnitMarker"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    const-string/jumbo v3, "allowZero"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    const-string/jumbo v3, "weeksAloneOnly"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    const-string/jumbo v3, "useMilliseconds"

    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    const-string/jumbo v3, "ScopeDataList"

    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_2
    new-instance v3, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "did not find DataRecord while reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null data read while reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .locals 4

    const-string/jumbo v1, "DataRecord"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    const-string/jumbo v1, "pl"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string/jumbo v1, "pluralName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringTable(Ljava/lang/String;[[Ljava/lang/String;)V

    const-string/jumbo v1, "gender"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    const-string/jumbo v1, "singularName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "halfName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "numberName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "mediumName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "shortName"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "measure"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "rqdSuffix"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "optSuffix"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "halves"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "halfPlacement"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    const-string/jumbo v1, "halfSupport"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    const-string/jumbo v1, "fifteenMinutes"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "fiveMinutes"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "requiresDigitSeparator"

    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string/jumbo v1, "digitPrefix"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "countSep"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "shortUnitSep"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "unitSep"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "unitSepRequiresDP"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    const-string/jumbo v1, "requiresSkipMarker"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    const-string/jumbo v1, "numberSystem"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string/jumbo v1, "zero"

    iget-char v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    const-string/jumbo v1, "decimalSep"

    iget-char v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    const-string/jumbo v1, "omitSingularCount"

    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string/jumbo v1, "omitDualCount"

    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string/jumbo v1, "zeroHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string/jumbo v1, "decimalHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string/jumbo v1, "fractionHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    const-string/jumbo v1, "skippedUnitMarker"

    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "allowZero"

    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string/jumbo v1, "weeksAloneOnly"

    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string/jumbo v1, "useMilliseconds"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ScopeDataList"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->write(Landroid/icu/impl/duration/impl/RecordWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    return-void
.end method
