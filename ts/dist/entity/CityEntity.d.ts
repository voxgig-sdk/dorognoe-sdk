import { DorognoeEntityBase } from '../DorognoeEntityBase';
import type { DorognoeSDK } from '../DorognoeSDK';
import type { Control } from '../types';
import type { City, CityListMatch } from '../DorognoeTypes';
declare class CityEntity extends DorognoeEntityBase<City> {
    constructor(client: DorognoeSDK, entopts: any);
    make(this: CityEntity): CityEntity;
    list(this: any, reqmatch?: CityListMatch, ctrl?: Control): Promise<CityEntity[]>;
}
export { CityEntity };
